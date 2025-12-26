"use client";

import { useEffect, useState, useCallback, useRef } from "react";
import Image from "next/image";

export default function StoriesViewer({ stories, onClose }) {
  const [index, setIndex] = useState(0);
  const [progress, setProgress] = useState(0);
  const [isPaused, setIsPaused] = useState(false);
  const story = stories[index];
  const startTimeRef = useRef(0);
  const pauseTimeRef = useRef(0);
  const animationRef = useRef();
  const videoRef = useRef(null);

  const DURATION = 10000; // 10 seconds per story

  const goToNext = useCallback(() => {
    if (index < stories.length - 1) {
      setIndex(index + 1);
      setProgress(0);
    } else {
      onClose();
    }
  }, [index, stories.length, onClose]);

  const goToPrevious = useCallback(() => {
    if (index > 0) {
      setIndex(index - 1);
      setProgress(0);
    }
  }, [index]);

  const handleTap = useCallback((e) => {
    const rect = e.currentTarget.getBoundingClientRect();
    const x = e.clientX - rect.left;
    const third = rect.width / 3;

    if (x < third) {
      goToPrevious();
    } else if (x > third * 2) {
      goToNext();
    }
  }, [goToPrevious, goToNext]);

  const handlePause = useCallback(() => {
    setIsPaused(true);
    pauseTimeRef.current = performance.now();
    if (videoRef.current) {
      videoRef.current.pause();
    }
  }, []);

  const handleResume = useCallback(() => {
    setIsPaused(false);
    const pauseDuration = performance.now() - pauseTimeRef.current;
    startTimeRef.current += pauseDuration;
    if (videoRef.current) {
      videoRef.current.play();
    }
  }, []);

  useEffect(() => {
    if (!story?.media) return;

    setProgress(0);
    startTimeRef.current = performance.now();
    
    const isVideo = story.media.mime?.startsWith("video");
    
    // For videos, let the video control the progression
    if (isVideo) {
      return;
    }

    // For images, animate progress
    const animate = () => {
      if (isPaused) {
        animationRef.current = requestAnimationFrame(animate);
        return;
      }

      const now = performance.now();
      const elapsed = now - startTimeRef.current;
      const newProgress = Math.min(elapsed / DURATION, 1);
      
      setProgress(newProgress);

      if (newProgress < 1) {
        animationRef.current = requestAnimationFrame(animate);
      } else {
        goToNext();
      }
    };

    animationRef.current = requestAnimationFrame(animate);

    return () => {
      if (animationRef.current) {
        cancelAnimationFrame(animationRef.current);
      }
    };
  }, [story, isPaused, goToNext]);

  const handleVideoTimeUpdate = useCallback((e) => {
    const video = e.target;
    if (video.duration) {
      setProgress(video.currentTime / video.duration);
    }
  }, []);

  if (!story?.media) return null;

  const isVideo = story.media.mime?.startsWith("video");

  return (
    <div 
      className="fixed inset-0 z-50 bg-black flex flex-col items-center justify-center"
      style={{ padding: 0, zIndex: 1000 }}
    >
      {/* Close button */}
      <button
        onClick={onClose}
        className="absolute top-4 right-4 text-white text-xl z-50 bg-black/40 rounded-full w-10 h-10 flex items-center justify-center hover:bg-black/60 transition-colors"
        style={{ backdropFilter: 'blur(4px)' }}
      >
        ✕
      </button>

      {/* Main content container */}
      <div className="relative flex flex-col items-center justify-center w-full h-full">
        {/* Story container with progress bars on top */}
        <div
          className="relative bg-black flex items-center justify-center"
          style={{
            aspectRatio: '9/16',
            width: 340,
            maxWidth: '90vw',
            maxHeight: '90vh',
            overflow: 'hidden',
            borderRadius: 8,
          }}
          onClick={handleTap}
          onMouseDown={handlePause}
          onMouseUp={handleResume}
          onTouchStart={handlePause}
          onTouchEnd={handleResume}
        >
          {/* Progress bars - positioned absolutely at top */}
          <div
            className="absolute top-0 left-0 right-0 z-10 flex gap-1 p-2"
            style={{ pointerEvents: 'none' }}
          >
            {stories.map((_, i) => (
              <div 
                key={i} 
                className="flex-1 h-0.5 bg-white/30 rounded-full overflow-hidden"
                style={{ minWidth: 0 }}
              >
                <div
                  className="h-full bg-white rounded-full"
                  style={{
                    width: i < index ? '100%' : i === index ? `${progress * 100}%` : '0%',
                    transition: i === index && !isPaused ? 'width 100ms linear' : 'none',
                  }}
                />
              </div>
            ))}
          </div>

          {/* Media content */}
          {isVideo ? (
            <video
              ref={videoRef}
              src={story.media.url}
              autoPlay
              playsInline
              muted
              onEnded={goToNext}
              onTimeUpdate={handleVideoTimeUpdate}
              className="w-full h-full object-cover"
              style={{ background: 'black' }}
            />
          ) : (
            <Image
              src={story.media.url}
              alt="Story"
              className="w-full h-full object-cover"
              style={{ background: 'black' }}
              fill
              sizes="340px"
              priority
            />
          )}

          {/* Tap zones visualization on hover (optional - remove if not needed) */}
          <div className="absolute inset-0 flex pointer-events-none">
            <div className="flex-1 hover:bg-white/5 transition-colors" />
            <div className="flex-1" />
            <div className="flex-1 hover:bg-white/5 transition-colors" />
          </div>
        </div>
      </div>
    </div>
  );
}
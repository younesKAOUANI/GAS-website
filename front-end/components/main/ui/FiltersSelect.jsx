export function FilterSelect({ label, value, onChange, options = [] }) {
  return (
    <select
      value={value}
      onChange={(e) => onChange(e.target.value)}
      className="
        w-full appearance-none rounded-md border border-gray-200
        bg-white px-4 py-3 text-sm text-gray-700
        focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/30
        cursor-pointer
      "
    >
      {options.map((option) => (
        <option key={option.value} value={option.value}>
          {option.label}
        </option>
      ))}
    </select>
  );
}

package main

func main() {
	println(romanToInt("III"))
	println(romanToInt("IV"))
	println(romanToInt("IX"))
	println(romanToInt("LVIII"))
	println(romanToInt("MCMXCIV"))

}

func romanToInt(s string) int {
	romanMap := map[string]int{
		"I": 1,
		"V": 5,
		"X": 10,
		"L": 50,
		"C": 100,
		"D": 500,
		"M": 1000,
	}

	var result int

	for i := 0; i < len(s); i++ {
		if i+1 < len(s) && romanMap[string(s[i])] < romanMap[string(s[i+1])] {
			result += romanMap[string(s[i+1])] - romanMap[string(s[i])]
			i++
		} else {
			result += romanMap[string(s[i])]
		}
	}
	return result
}
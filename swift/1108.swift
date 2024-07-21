func defangIPaddr(_ address: String) -> String {
    var result = ""

    for char in address {
        if char != "." {
            result.append(char)
        } else {
            result.append("[.]")
        }
    }

    return result
}

var test1 = "1.1.1.1"
let result = defangIPaddr(test1)
print(result) // 1[.]1[.]1[.]1
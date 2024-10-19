def max_profit(l: list[int]) -> int:
    res = 0
    for i in range(len(l) - 1):
        if l[i + 1] > l[i]:
            res += (l[i + 1] - l[i])

    return res


def main() -> None:
    print(max_profit([1, 2, 3, 4, 5]))

    assert (max_profit([7, 1, 5, 3, 6, 4]) == 7)
    assert (max_profit([1, 2, 3, 4, 5]) == 4)
    assert (max_profit([7, 6, 4, 3, 1]) == 0)
    print("all tests passed!")


if __name__ == '__main__':
    main()

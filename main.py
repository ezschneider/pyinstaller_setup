from .src.test_import import TestImportClass


def main():
    t = TestImportClass('Hello World!')
    print(t)


if __name__ == '__main__':
    main()

# Refined

Generics based [refinement types](https://en.wikipedia.org/wiki/Refinement_type) implementation for Swift.

## Examples

### New predicate: Even integer

You define a type constraint by conforming to `Predicate` protocol.

```swift
struct EvenInt: Predicate {
    static func isValid(value: Int) -> Bool {
        return value % 2 == 0
    }
}
```

In order to use the refined type described by the predicate, you parametrize the generic `Refined` with it.

```swift
let even: Refined<EvenInt>
```

You can create a typealias to provide a less verbose way to refer to the new type.

```swift
extension Int {
    typealias Even = Refined<EvenInt>
}

let even: Int.Even

```

### Combine predicates: Letter or Number character

You can also define refined types by combining existing predicates.

```swift
let alphanumeric: Refined<Or<Letter<Character>, Number<Character>>>
```

Refined's *fluent interface* makes type definition shorter and more readable. 

```swift
let alphanumeric: Character.Letter.or.Number
```

### Extend DSL: Alphanumeric constraint

Adding more predicates to the DSL is a matter of adding more typealias to Refined's *fluent interface*:

- a typealias of the refined type into to the *base type*
- a typealias of `Refined._And` parameterized with the new type
- a typealias of `Refined._Or` parameterized with the new type

```swift
extension MaybeLetter where Self: MaybeNumber {
    public typealias Alphanumeric = Letter.or.Number
}

extension Refined.And where Refined.Value: MaybeLetter & MaybeNumber  {
    public typealias Alphanumeric = Refined._And<Letter.or.Number>
}

extension Refined.Or where Refined.Value: MaybeLetter & MaybeNumber {
    public typealias Alphanumeric = Refined._Or<Letter.or.Number>
}
```

The previous extensions make it possible to use the `Alphanumeric` constraint on any type that conforms to `MaybeLetter` and `MaybeNumber` protocols.

```swift
let foo: Character.Alphanumeric.or.Emoji
```


## Alternatives

- Swift:
    - [NonEmpty](https://github.com/pointfreeco/swift-nonempty)
    - [Validated](https://github.com/Ben-G/Validated)
- Scala:
    - [Refined](https://github.com/fthomas/refined)
    - [Bond](https://github.com/fwbrasil/bond)
- Haskell:
    - [Refined](https://github.com/nikita-volkov/refined)
    - [LiquidHaskell](https://github.com/ucsd-progsys/liquidhaskell)
- Kotlin:
    - [Refinement Types?](https://discuss.kotlinlang.org/t/refinement-types/9753)
- TypeScript:
    - [refscript](https://github.com/UCSD-PL/refscript)
- Racket:
    - [Refinement Types in Typed Racket](http://blog.racket-lang.org/2017/11/adding-refinement-types.html)
- F#:
    - [F7](https://www.microsoft.com/en-us/research/project/f7-refinement-types-for-f/?from=http%3A%2F%2Fresearch.microsoft.com%2Fen-us%2Fprojects%2Ff7%2F)
- Perl:
    - Perl 6: [Type constraints](https://docs.perl6.org/type/Signature#Type_constraints)
    - Perl 5: [Moose](https://github.com/moose/Moose)

## License

Refined is released under the MIT license. See LICENSE file for details.

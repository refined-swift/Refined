// Generated with gyb. Do not edit.

import Features

extension Refined: Countable where WrappedValue: Countable {}
extension Refined: MaybeEmpty where WrappedValue: MaybeEmpty {}
extension Refined: MaybeLetter where WrappedValue: MaybeLetter {}
extension Refined: MaybeLowercase where WrappedValue: MaybeLowercase {}
extension Refined: MaybeNumber where WrappedValue: MaybeNumber {}
extension Refined: MaybeUppercase where WrappedValue: MaybeUppercase {}
extension Refined: MaybeWhitespace where WrappedValue: MaybeWhitespace {}

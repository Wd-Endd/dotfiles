local cmp = require("cmp")
return {
	comparators = {
		cmp.config.compare.offset,
		cmp.config.compare.score,
		cmp.config.compare.exact,
		-- function(entry1, entry2)
		--     local kind1 = entry1.completion_item.kind
		--     local kind2 = entry2.completion_item.kind
		--
		--     local kind_priority = {
		--         [cmp.lsp.CompletionItemKind.Field] = 1,
		--         [cmp.lsp.CompletionItemKind.Variable] = 2,
		--         [cmp.lsp.CompletionItemKind.Snippet] = 3,
		--         [cmp.lsp.CompletionItemKind.Method] = 4,
		--         [cmp.lsp.CompletionItemKind.Function] = 5,
		--         [cmp.lsp.CompletionItemKind.Constructor] = 5,
		--         [cmp.lsp.CompletionItemKind.Class] = 7,
		--         [cmp.lsp.CompletionItemKind.Interface] = 8,
		--         [cmp.lsp.CompletionItemKind.Text] = 9,
		--
		--         [cmp.lsp.CompletionItemKind.Keyword] = 10,
		--         [cmp.lsp.CompletionItemKind.Enum] = 11,
		--         [cmp.lsp.CompletionItemKind.Module] = 12,
		--     }
		--
		--     local priority1 = kind_priority[kind1] or 99
		--     local priority2 = kind_priority[kind2] or 99
		--
		--     if priority1 ~= priority2 then
		--         return priority1 < priority2
		--     else
		--         return cmp.config.compare.sort_text(entry1, entry2)
		--     end
		-- end,
		cmp.config.compare.sort_text,
	},
}

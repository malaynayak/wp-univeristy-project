wp.blocks.registerBlockType('custom/border-box', {
    title: 'Cool Border Box',
    icon: 'smiley',
    category: 'common',
    attributes: {
        content: {
            type: 'text',
        },
        color: {
            type: 'string',
            // source: 'meta',
            // meta: 'color'
        }
    },
    edit: function(props) {
        
        function updateContent(event) {
            props.setAttributes({content: event.target.value});
        }

        function updateColor(value) {
            props.setAttributes({color: value.hex});
        }

        return wp.element.createElement(
            "div", 
            null, 
            wp.element.createElement(
                "h3", 
                {
                    style: {
                        border: "5px solid ".concat(props.attributes.color)
                    }
                }, 
                props.attributes.content ? props.attributes.content : 'Border Box'
            ),
            wp.element.createElement(
                "label", 
                null,
                'Write Here: '
            ),
            wp.element.createElement(
                "input", 
                {
                    type: "text",
                    value: props.attributes.content,
                    onChange: updateContent
                }
            ),
            wp.element.createElement(
                wp.components.ColorPicker, 
                {
                    color: props.attributes.color,
                    onChangeComplete: updateColor
                }
            )
        );
    },
    save: function(props) {
        // return null;
        return wp.element.createElement(
            "div", 
            null, 
            wp.element.createElement(
                "h3", 
                {
                    style: {
                        border: "5px solid ".concat(props.attributes.color)
                    }
                }, 
                props.attributes.content
            )
        );
    }
});

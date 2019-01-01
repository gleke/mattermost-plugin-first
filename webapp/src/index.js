const React = window.React;
const {Glyphicon} = window.ReactBootstrap;

import {createPluginPost} from './action'

class Plugin {
    initialize(registry, store) {
        registry.registerChannelHeaderButtonAction(
            <Glyphicon glyph="pencil" />,
            (channel) => {
                createPluginPost(channel.id)(store.dispatch, store.getState)
            },
            'First Plugin',
            'This is plugin tooltip',
        )
    }
}

window.registerPlugin("org.kaakaa.mattermost-plugin-first", new Plugin());

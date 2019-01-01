import {createPost} from 'mattermost-redux/actions/posts';
import {getCurrentUserId} from 'mattermost-redux/selectors/entities/users';

export function createPluginPost(channelId) {
    return async (dispatch, getState) => {
        const state = getState();
        const userId = getCurrentUserId(state)
        const post = {
            channel_id: channelId,
            user_id: userId,
            message: "Post from webapp plugin",
        }
        return await dispatch(createPost(post));
    }
}
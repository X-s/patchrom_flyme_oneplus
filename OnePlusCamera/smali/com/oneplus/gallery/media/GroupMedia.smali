.class public interface abstract Lcom/oneplus/gallery/media/GroupMedia;
.super Ljava/lang/Object;
.source "GroupMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/Media;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract addGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V
.end method

.method public abstract getCoverIndex()I
.end method

.method public abstract getCoverMedia()Lcom/oneplus/gallery/media/Media;
.end method

.method public abstract getGroupId()Ljava/lang/String;
.end method

.method public abstract isUserCoverFound()Z
.end method

.method public abstract openGroupMediaList(Lcom/oneplus/gallery/media/MediaComparator;I)Lcom/oneplus/gallery/media/MediaList;
.end method

.method public abstract removeGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V
.end method

.method public abstract setCoverMedia(Lcom/oneplus/gallery/media/Media;I)Z
.end method

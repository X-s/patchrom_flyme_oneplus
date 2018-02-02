.class public interface abstract Lcom/oneplus/gallery2/media/MediaSharingManager;
.super Ljava/lang/Object;
.source "MediaSharingManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;
    }
.end annotation


# static fields
.field public static final FLAG_WAIT_FILE_INFOS_READY:I = 0x1


# virtual methods
.method public abstract clearSharingCaches()V
.end method

.method public abstract getFileInfo(Landroid/net/Uri;I)Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;
.end method

.method public abstract getMediaId(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract prepareSharing(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/PrepareSharingCallback;I)Lcom/oneplus/base/Handle;
.end method

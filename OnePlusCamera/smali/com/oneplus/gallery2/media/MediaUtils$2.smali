.class Lcom/oneplus/gallery2/media/MediaUtils$2;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field private final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$mimeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 6

    .prologue
    .line 366
    if-eqz p4, :cond_0

    .line 372
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    .line 373
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TempMediaSource;

    .line 369
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$mimeType:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/oneplus/gallery2/media/TempMediaSource;->getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    invoke-virtual {v0, v1, v2, p5}, Lcom/oneplus/gallery2/media/TempMediaSource;->getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

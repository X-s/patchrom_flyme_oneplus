.class Lcom/oneplus/gallery2/media/MtpMediaSource$3;
.super Lcom/oneplus/base/CallbackHandle;
.source "MtpMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MtpMediaSource;->getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MtpMediaSource;

.field private final synthetic val$deviceInfo:Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;

.field private final synthetic val$objectId:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Landroid/os/Handler;Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$3;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSource;

    iput-object p5, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$3;->val$deviceInfo:Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;

    iput p6, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$3;->val$objectId:I

    .line 370
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$3;->val$deviceInfo:Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;->mediaObtainHandles:Ljava/util/Map;

    iget v1, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$3;->val$objectId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 376
    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

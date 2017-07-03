.class final Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;
.super Lcom/oneplus/base/Handle;
.source "MediaSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivationHandle"
.end annotation


# instance fields
.field public final flags:I

.field public final subActivationHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 58
    const-string v0, "ActivateAllMediaSources"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->subActivationHandles:Ljava/util/Map;

    .line 59
    iput p1, p0, Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;->flags:I

    .line 60
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 66
    # invokes: Lcom/oneplus/gallery2/media/MediaSources;->deactivate(Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;)V
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaSources;->access$200(Lcom/oneplus/gallery2/media/MediaSources$ActivationHandle;)V

    .line 67
    return-void
.end method

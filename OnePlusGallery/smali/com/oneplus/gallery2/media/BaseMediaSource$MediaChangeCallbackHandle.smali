.class final Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;
.super Lcom/oneplus/base/Handle;
.source "BaseMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/BaseMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaChangeCallbackHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaChangeCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;

    .line 129
    const-string v0, "MediaChangeCallback"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 130
    iput-object p2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 131
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;

    # invokes: Lcom/oneplus/gallery2/media/BaseMediaSource;->removeMediaChangedCallback(Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->access$100(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/BaseMediaSource$MediaChangeCallbackHandle;)V

    .line 138
    return-void
.end method

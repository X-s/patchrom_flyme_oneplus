.class final Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;
.super Lcom/oneplus/base/Handle;
.source "BaseMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/BaseMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaChangeCallbackHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery/media/MediaChangeCallback;

.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaProvider;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/BaseMediaProvider;Lcom/oneplus/gallery/media/MediaChangeCallback;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaProvider;

    const-string/jumbo v0, "MediaChangeCallback"

    .line 171
    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 172
    iput-object p2, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery/media/MediaChangeCallback;

    .line 173
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaProvider;

    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->access$1(Lcom/oneplus/gallery/media/BaseMediaProvider;Lcom/oneplus/gallery/media/BaseMediaProvider$MediaChangeCallbackHandle;)V

    .line 180
    return-void
.end method

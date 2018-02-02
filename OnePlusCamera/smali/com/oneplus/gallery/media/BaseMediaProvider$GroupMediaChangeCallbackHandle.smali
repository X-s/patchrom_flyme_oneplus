.class final Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;
.super Lcom/oneplus/base/Handle;
.source "BaseMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/BaseMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupMediaChangeCallbackHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaProvider;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/BaseMediaProvider;Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaProvider;

    const-string/jumbo v0, "GroupMediaChangeCallbackHandle"

    .line 193
    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 194
    iput-object p2, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;->callback:Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    .line 195
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaProvider;

    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/BaseMediaProvider;->access$2(Lcom/oneplus/gallery/media/BaseMediaProvider;Lcom/oneplus/gallery/media/BaseMediaProvider$GroupMediaChangeCallbackHandle;)V

    .line 202
    return-void
.end method

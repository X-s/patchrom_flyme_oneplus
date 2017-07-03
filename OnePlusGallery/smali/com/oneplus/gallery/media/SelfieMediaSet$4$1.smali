.class Lcom/oneplus/gallery/media/SelfieMediaSet$4$1;
.super Ljava/lang/Object;
.source "SelfieMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/SelfieMediaSet$4;->onCompleted(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/SelfieMediaSet$4;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/SelfieMediaSet$4;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$4$1;->this$1:Lcom/oneplus/gallery/media/SelfieMediaSet$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 201
    if-eqz p3, :cond_0

    .line 202
    iget-object v0, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$4$1;->this$1:Lcom/oneplus/gallery/media/SelfieMediaSet$4;

    iget-object v0, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$4;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v0, p3}, Lcom/oneplus/gallery/media/SelfieMediaSet;->addMediaToActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V

    .line 203
    :cond_0
    return-void
.end method

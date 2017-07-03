.class Lcom/oneplus/gallery/media/SelfieMediaSet$4;
.super Ljava/lang/Object;
.source "SelfieMediaSet.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/SelfieMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/OperationCallback",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/SelfieMediaSet;J)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$4;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$4;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 210
    return-void
.end method

.method public onCompleted(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "hasChanged"    # Ljava/lang/Boolean;

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$4;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$4;->val$id:J

    new-instance v4, Lcom/oneplus/gallery/media/SelfieMediaSet$4$1;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/media/SelfieMediaSet$4$1;-><init>(Lcom/oneplus/gallery/media/SelfieMediaSet$4;)V

    iget-object v0, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$4;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 206
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/SelfieMediaSet$4;->onCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 189
    return-void
.end method

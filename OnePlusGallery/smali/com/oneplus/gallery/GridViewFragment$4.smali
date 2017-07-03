.class Lcom/oneplus/gallery/GridViewFragment$4;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$4;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 417
    return-void
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$4;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->exitSelectionMode()V
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$2100(Lcom/oneplus/gallery/GridViewFragment;)V

    .line 423
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$4;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 427
    return-void
.end method

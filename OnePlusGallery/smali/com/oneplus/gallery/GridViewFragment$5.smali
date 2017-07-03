.class Lcom/oneplus/gallery/GridViewFragment$5;
.super Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;
.source "GridViewFragment.java"


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
    .line 430
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$5;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionProcessCompleted()V
    .locals 3

    .prologue
    .line 433
    invoke-super {p0}, Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;->onDeletionProcessCompleted()V

    .line 434
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$5;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->exitSelectionMode()V
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$2100(Lcom/oneplus/gallery/GridViewFragment;)V

    .line 435
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$5;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 437
    return-void
.end method

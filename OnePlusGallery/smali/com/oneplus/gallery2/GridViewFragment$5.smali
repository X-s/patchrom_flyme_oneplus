.class Lcom/oneplus/gallery2/GridViewFragment$5;
.super Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$5;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionProcessCompleted()V
    .locals 3

    .prologue
    .line 452
    invoke-super {p0}, Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;->onDeletionProcessCompleted()V

    .line 453
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$5;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->exitSelectionMode()V
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$2400(Lcom/oneplus/gallery2/GridViewFragment;)V

    .line 454
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$5;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

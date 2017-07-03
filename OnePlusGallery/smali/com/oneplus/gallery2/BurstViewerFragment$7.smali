.class Lcom/oneplus/gallery2/BurstViewerFragment$7;
.super Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$7;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionProcessCompleted()V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;->onDeletionProcessCompleted()V

    .line 276
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$7;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.class Lcom/oneplus/gallery2/GridViewFragment$17;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;


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
    .line 2507
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$17;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareActivityClicked(Ljava/lang/String;)V
    .locals 1
    .param p1, "componentname"    # Ljava/lang/String;

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$17;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ShareMediaChosenAppName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->access$9602(Lcom/oneplus/gallery2/GridViewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2520
    return-void
.end method

.method public onShareCompleted(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 2515
    return-void
.end method

.method public onShareStarted(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$17;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ShareMediaChosenAppName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$9602(Lcom/oneplus/gallery2/GridViewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2512
    return-void
.end method

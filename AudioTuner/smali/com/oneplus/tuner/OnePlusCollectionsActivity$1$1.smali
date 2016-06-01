.class Lcom/oneplus/tuner/OnePlusCollectionsActivity$1$1;
.super Ljava/lang/Object;
.source "OnePlusCollectionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1$1;->this$1:Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1$1;->this$1:Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;

    iget-object v0, v0, Lcom/oneplus/tuner/OnePlusCollectionsActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusCollectionsActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusCollectionsActivity;->access$400(Lcom/oneplus/tuner/OnePlusCollectionsActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    .line 105
    return-void
.end method

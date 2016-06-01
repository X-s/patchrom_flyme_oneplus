.class Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$1;
.super Ljava/lang/Object;
.source "OPCommonStyleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

.field final synthetic val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$1;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iput-object p2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$1;->val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 205
    new-instance v0, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$1;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    # getter for: Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->access$000(Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "model":Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$1;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v1, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    iget-object v1, v1, Lcom/oneplus/tuner/OPCommonStyleFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$1;->val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->startLoad(Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    goto :goto_0
.end method

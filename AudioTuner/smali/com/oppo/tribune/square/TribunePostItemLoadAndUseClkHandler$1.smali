.class Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;
.super Ljava/lang/Object;
.source "TribunePostItemLoadAndUseClkHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->getLoadAndUseClkListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

.field final synthetic val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    iput-object p2, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    const-string v4, "TribunePostItemLoadAndUseClkHandler"

    const-string v5, "LoadAndUse---click"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v4, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    iget-object v4, v4, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 43
    .local v2, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f030029

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "dialogview":Landroid/view/View;
    const v4, 0x7f0b00f7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 47
    .local v0, "checkbox":Landroid/widget/CheckBox;
    sget-boolean v4, Lcom/oneplus/tuner/utillty/TunerConstant;->isRemind:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    new-instance v4, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$1;

    invoke-direct {v4, p0}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$1;-><init>(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    sget-boolean v4, Lcom/oneplus/tuner/utillty/TunerConstant;->isRemind:Z

    if-eqz v4, :cond_2

    .line 58
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    iget-object v5, v5, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c06ea

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;

    invoke-direct {v6, p0}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$3;-><init>(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c066f

    new-instance v6, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$2;

    invoke-direct {v6, p0}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$2;-><init>(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 111
    :cond_0
    :goto_1
    return-void

    .line 47
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 97
    :cond_2
    iget-object v4, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    if-eqz v4, :cond_0

    .line 100
    new-instance v3, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    iget-object v4, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    iget-object v4, v4, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;-><init>(Landroid/content/Context;)V

    .line 102
    .local v3, "model":Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    :cond_3
    iget-object v4, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v3, v4}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->startLoad(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    .line 106
    iget-object v4, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    # getter for: Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;
    invoke-static {v4}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->access$000(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;)Lcom/oneplus/tuner/listener/DownloadAndUseListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    # getter for: Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;
    invoke-static {v4}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->access$000(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;)Lcom/oneplus/tuner/listener/DownloadAndUseListener;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-interface {v4, v5}, Lcom/oneplus/tuner/listener/DownloadAndUseListener;->onDownloadAndUse(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    goto :goto_1
.end method

.class Lcom/oneplus/tuner/OfficialConfigActivity$3;
.super Ljava/lang/Object;
.source "OfficialConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/OfficialConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OfficialConfigActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OfficialConfigActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 164
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mLoadFromNet:Z
    invoke-static {v3}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$400(Lcom/oneplus/tuner/OfficialConfigActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    invoke-virtual {v3}, Lcom/oneplus/tuner/OfficialConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    iget-object v4, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I
    invoke-static {v4}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$100(Lcom/oneplus/tuner/OfficialConfigActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;->parse(Landroid/content/Context;I)Lcom/oppo/tribune/packshow/parse/ConfigNumResult;

    move-result-object v0

    .line 168
    .local v0, "r":Lcom/oppo/tribune/packshow/parse/ConfigNumResult;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/oppo/tribune/packshow/parse/ConfigNumResult;->getTypeList()Ljava/util/ArrayList;

    move-result-object v1

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;
    invoke-static {v3}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$500(Lcom/oneplus/tuner/OfficialConfigActivity;)Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I
    invoke-static {v4}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$100(Lcom/oneplus/tuner/OfficialConfigActivity;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->writeConfigNum(Ljava/util/List;I)Z

    .line 172
    const/4 v3, 0x0

    sput-boolean v3, Lcom/oneplus/tuner/utillty/TunerConstant;->isRequest:Z

    .line 175
    .end local v0    # "r":Lcom/oppo/tribune/packshow/parse/ConfigNumResult;
    .end local v1    # "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;
    invoke-static {v3}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$500(Lcom/oneplus/tuner/OfficialConfigActivity;)Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->mCurrentBrand:I
    invoke-static {v4}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$100(Lcom/oneplus/tuner/OfficialConfigActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->readConfigNumList(I)Ljava/util/List;

    move-result-object v2

    .line 178
    .local v2, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    iget-object v3, p0, Lcom/oneplus/tuner/OfficialConfigActivity$3;->this$0:Lcom/oneplus/tuner/OfficialConfigActivity;

    # getter for: Lcom/oneplus/tuner/OfficialConfigActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/oneplus/tuner/OfficialConfigActivity;->access$700(Lcom/oneplus/tuner/OfficialConfigActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/oneplus/tuner/OfficialConfigActivity$3$1;

    invoke-direct {v4, p0, v2}, Lcom/oneplus/tuner/OfficialConfigActivity$3$1;-><init>(Lcom/oneplus/tuner/OfficialConfigActivity$3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

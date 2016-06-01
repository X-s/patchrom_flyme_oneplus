.class public Lcom/oneplus/tuner/adapter/TypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TypeListAdapter.java"

# interfaces
.implements Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
        ">;",
        "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;>;"
    const v0, 0x7f03006a

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    iput-object p1, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/adapter/TypeListAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/adapter/TypeListAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/adapter/TypeListAdapter;->preSubmitReport(Landroid/view/View;)V

    return-void
.end method

.method private initSubmitData()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    invoke-direct {v0}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    .line 116
    iget-object v0, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;->setSubmitInfoListener(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;)V

    .line 117
    return-void
.end method

.method private preSubmitReport(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Lcom/oneplus/tuner/adapter/TypeListAdapter;->initSubmitData()V

    .line 66
    iget-object v0, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06f0

    invoke-static {v0, v1, v4}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    sget-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ba

    invoke-static {v0, v1, v4}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mSubmitModel:Lcom/oppo/tribune/packshow/parse/SubmitReportModel;

    iget-object v2, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Lcom/oppo/tribune/packshow/parse/SubmitReportModel;->startSubmitTask(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getUid()J
    .locals 2

    .prologue
    .line 120
    sget-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    iget-object v5, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03006a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 40
    :cond_0
    const v5, 0x7f0b01e0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, "tv1":Landroid/widget/TextView;
    const v5, 0x7f0b01e1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 43
    .local v4, "tv2":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/adapter/TypeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;

    .line 44
    .local v0, "config":Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getType()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "str":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getConfigNum()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "configs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_1
    const v5, 0x7f0b01e2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 53
    .local v1, "requestShareBt":Landroid/widget/Button;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->getTypeId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 54
    new-instance v5, Lcom/oneplus/tuner/adapter/TypeListAdapter$1;

    invoke-direct {v5, p0}, Lcom/oneplus/tuner/adapter/TypeListAdapter$1;-><init>(Lcom/oneplus/tuner/adapter/TypeListAdapter;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-object p2
.end method

.method public onCancelSumbit()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onFinishSumbit(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 89
    if-nez p1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c05fb

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06dc

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 98
    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/tuner/utillty/TunerConstant;->isRequest:Z

    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06de

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 102
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06dd

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 105
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06df

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06e0

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onFinishSumbit(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/adapter/TypeListAdapter;->onFinishSumbit(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreSumbit()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

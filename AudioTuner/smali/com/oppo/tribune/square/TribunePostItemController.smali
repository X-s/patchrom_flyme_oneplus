.class public Lcom/oppo/tribune/square/TribunePostItemController;
.super Ljava/lang/Object;
.source "TribunePostItemController.java"


# instance fields
.field mHideListener:Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/square/TribunePostItemController;Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p3, "x3"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/square/TribunePostItemController;->getItemClkLsn(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method private getItemClkLsn(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simpleThreadInfo"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p3, "position"    # I

    .prologue
    .line 68
    new-instance v0, Lcom/oppo/tribune/square/TribunePostItemController$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppo/tribune/square/TribunePostItemController$3;-><init>(Lcom/oppo/tribune/square/TribunePostItemController;Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)V

    return-object v0
.end method


# virtual methods
.method public final getListItemElementsClkLsn(Landroid/content/Context;)Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Lcom/oppo/tribune/square/TribunePostItemController$1;

    invoke-direct {v0, p0, p1}, Lcom/oppo/tribune/square/TribunePostItemController$1;-><init>(Lcom/oppo/tribune/square/TribunePostItemController;Landroid/content/Context;)V

    return-object v0
.end method

.method protected getUseBtnClkLsn2(Landroid/content/Context;Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;
    .param p3, "simpleThreadInfo"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 53
    new-instance v0, Lcom/oppo/tribune/square/TribunePostItemController$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppo/tribune/square/TribunePostItemController$2;-><init>(Lcom/oppo/tribune/square/TribunePostItemController;Landroid/content/Context;Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    return-object v0
.end method

.method protected onTribuneItemClk(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;JI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simpleThreadInfo"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p3, "tid"    # J
    .param p5, "position"    # I

    .prologue
    .line 80
    const-string v1, "shuqi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTribuneItemClk, position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sound_effect"

    new-instance v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v2, p2}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 83
    const-string v1, "isFromList"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const-string v1, "shuqi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pass, item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v3, p2}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    invoke-virtual {v3}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/16 v1, 0x65

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    return-void
.end method

.method public setOnHideListener(Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;)V
    .locals 0
    .param p1, "onHideListener"    # Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemController;->mHideListener:Lcom/oneplus/tuner/view/DefaultStyleView$OnHideListener;

    .line 32
    return-void
.end method

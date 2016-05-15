.class Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;
.super Ljava/lang/Object;
.source "OemDataCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/oneplus/telephony/OemDataCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckCardStableReq"
.end annotation


# instance fields
.field public mCardState:I

.field public mRetry:I

.field public mTriggerEvent:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

.field final synthetic this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;


# direct methods
.method public constructor <init>(Lcn/oneplus/telephony/OemDataCardSelectionController;ILcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;)V
    .locals 1
    .param p2, "state"    # I
    .param p3, "event"    # Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    .prologue
    .line 225
    iput-object p1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mCardState:I

    .line 227
    iput-object p3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mTriggerEvent:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    .line 228
    const/4 v0, 0x1

    iput v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mRetry:I

    .line 229
    return-void
.end method

.method public constructor <init>(Lcn/oneplus/telephony/OemDataCardSelectionController;Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;)V
    .locals 1
    .param p2, "r"    # Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;

    .prologue
    .line 235
    iput-object p1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iget v0, p2, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mCardState:I

    iput v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mCardState:I

    .line 237
    iget-object v0, p2, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mTriggerEvent:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    iput-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mTriggerEvent:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    .line 238
    iget v0, p2, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mRetry:I

    iput v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mRetry:I

    .line 239
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CheckCardStableReq {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mCardState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mTriggerEvent:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->mRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

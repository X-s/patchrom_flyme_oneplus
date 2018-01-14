.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;
.super Ljava/lang/Object;
.source "QtiPrimaryCardPriorityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_NETWORK:I = -0x1

.field private static final INVALID_PRIORITY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcPriorityHandler"

.field private static final VDBG:Z

.field private static packageName:Ljava/lang/String;


# instance fields
.field private mAllPriorityConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

.field private mLoadingConfigCompleted:Z

.field private mLoadingCurrentConfigsDone:Z

.field private mPrefPrimarySlot:I

.field private mPriorityCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "com.qualcomm.qti.simsettings"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 45
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z

    .line 46
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    .line 74
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    .line 76
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    .line 78
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->readPriorityConfigFromXml()V

    .line 73
    return-void
.end method

.method private areConfigPrioritiesEqual()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    if-eq v1, v2, :cond_1

    .line 176
    :cond_0
    return v3

    .line 173
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private getMaxPrioritySlot()I
    .locals 5

    .prologue
    .line 157
    const/4 v1, -0x1

    .line 158
    .local v1, "slotId":I
    const/4 v2, -0x1

    .line 160
    .local v2, "tempMaxPriority":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v3, :cond_1

    .line 161
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    .line 161
    if-ge v2, v3, :cond_0

    .line 163
    move v1, v0

    .line 164
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxPriority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", maxPrioritySlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 169
    return v1
.end method

.method private getNumSlotsWithCdma([I)I
    .locals 3
    .param p1, "prefNwModes"    # [I

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "numSlotsWithCdma":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    .line 111
    aget v2, p1, v0

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->is3gpp2NwMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return v1
.end method

.method private getPattern(Landroid/content/res/XmlResourceParser;)Ljava/util/regex/Pattern;
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 272
    const-string/jumbo v1, "iin_pattern"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "regEx":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 274
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1

    .line 276
    :cond_0
    return-object v2
.end method

.method private getPriorityConfig(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x0

    .line 183
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getPriorityConfigComparator()I

    move-result v4

    .line 184
    .local v4, "priorityConfigComparator":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v0

    .line 187
    .local v0, "cardInfo":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityConfig: for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": iccid is null, EXIT!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 190
    return-object v8

    .line 193
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityConfig: for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Start!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 196
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    if-ge v2, v5, :cond_2

    .line 197
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    .line 198
    .local v3, "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    packed-switch v4, :pswitch_data_0

    .line 196
    :cond_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v5, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    iget-object v5, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    .line 200
    if-eqz v5, :cond_1

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 203
    return-object v3

    .line 208
    :pswitch_2
    iget-object v5, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    return-object v3

    .line 220
    .end local v3    # "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "QtiPcPriorityHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPriorityConfig:Exception:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v8

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string/jumbo v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string/jumbo v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string/jumbo v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method private readPriorityConfigFromXml()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 230
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    const-string/jumbo v4, "res is null"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loge(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getConfigXml()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "xml"

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 232
    .local v3, "resId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 234
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 235
    const/4 v4, 0x0

    iput v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    .line 237
    const-string/jumbo v4, "priority_config"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 239
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 240
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 241
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->savePriorityConfig(Landroid/content/res/XmlResourceParser;)V

    .line 242
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "QtiPcPriorityHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception while reading priority configs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllPriorityConfigs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 250
    if-eqz v1, :cond_1

    .line 251
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 244
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "resId":I
    :cond_2
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllPriorityConfigs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 250
    if-eqz v1, :cond_1

    .line 251
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 248
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    :catchall_0
    move-exception v4

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAllPriorityConfigs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 250
    if-eqz v1, :cond_3

    .line 251
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 248
    :cond_3
    throw v4
.end method

.method private savePriorityConfig(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 257
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;-><init>()V

    .line 260
    .local v0, "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    const-string/jumbo v1, "priority"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    .line 261
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPattern(Landroid/content/res/XmlResourceParser;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    .line 262
    const-string/jumbo v1, "card_type"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    .line 263
    const-string/jumbo v1, "mccmnc"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->mccmnc:Ljava/lang/String;

    .line 264
    const-string/jumbo v1, "network1"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network1:I

    .line 265
    const-string/jumbo v1, "network2"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network2:I

    .line 266
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Added to mAllPriorityConfigs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 268
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    .line 256
    return-void
.end method


# virtual methods
.method public getNwModesFromConfig(I)[I
    .locals 5
    .param p1, "primarySlotId"    # I

    .prologue
    .line 82
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v0

    .line 83
    .local v0, "defaultNwMode":I
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v2, v3, [I

    .line 85
    .local v2, "prefNwModes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 87
    if-ne v1, p1, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network1:I

    :goto_1
    aput v3, v2, v1

    .line 85
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network2:I

    goto :goto_1

    .line 90
    :cond_1
    aput v0, v2, v1

    goto :goto_2

    .line 94
    :cond_2
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getNumSlotsWithCdma([I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 96
    const-string/jumbo v3, "getNwModesFromConfig: More than one slot has CDMA nwMode set non-primary card nwModes to default nwMode"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    :goto_3
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v3, :cond_4

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNwModesFromConfig: nwMode from config on slot ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 100
    aget v4, v2, v1

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 101
    if-eq v1, p1, :cond_3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v3

    aput v3, v2, v1

    .line 98
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 105
    :cond_4
    return-object v2
.end method

.method public getPrefPrimarySlot()I
    .locals 2

    .prologue
    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 138
    const-string/jumbo v0, "getPrefPrimarySlot:  Start!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    if-nez v0, :cond_0

    .line 141
    const-string/jumbo v0, "getPrefPrimarySlot: Current Config Loading not done. EXIT!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->areConfigPrioritiesEqual()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const/4 v0, -0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 151
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPrefPrimarySlot: return mPrefPrimarySlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 153
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getMaxPrioritySlot()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    goto :goto_0
.end method

.method public isConfigLoadDone()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    return v0
.end method

.method public loadCurrentPriorityConfigs(Z)V
    .locals 3
    .param p1, "override"    # Z

    .prologue
    .line 121
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z

    if-nez v1, :cond_0

    .line 122
    const-string/jumbo v1, "getPrefPrimarySlot: All Config Loading not done. EXIT!!!"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 123
    return-void

    .line 126
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    if-eqz v1, :cond_1

    .line 120
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPriorityConfig(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    move-result-object v2

    aput-object v2, v1, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    goto :goto_0
.end method

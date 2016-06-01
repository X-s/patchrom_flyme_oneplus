.class public Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;
.super Ljava/lang/Object;
.source "GprsSaveUrlMatcher.java"


# static fields
.field public static IS_SDK_SUPPORT_WEBP:Z = false

.field public static final PIC_SUFFIX_ORIG:Ljava/lang/String; = ""

.field public static final PIC_SUFFIX_W200:Ljava/lang/String; = ".short.w200"

.field public static final PIC_SUFFIX_W300:Ljava/lang/String; = ".short.w300"

.field public static final PIC_SUFFIX_W400:Ljava/lang/String; = ".short.w400"

.field public static final PIC_SUFFIX_W500:Ljava/lang/String; = ".short.w500"

.field public static final PIC_SUFFIX_W600:Ljava/lang/String; = ".short.w600"

.field public static final TYPE_JPG_SUFFIX:Ljava/lang/String; = ".jpg"

.field public static final TYPE_WEBP_SUFFIX:Ljava/lang/String; = ".webp"


# instance fields
.field private final PIC_SUFFIX_ARRAY:[Ljava/lang/String;

.field private mBigSuffix:Ljava/lang/String;

.field private mCurrentType:I

.field private mIsNeedWifiOptimal:Z

.field private mPath:Ljava/lang/String;

.field private mSmallSuffix:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWifiBigSuffix:Ljava/lang/String;

.field private mWifiSmallSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lcom/oppo/tribune/util/PhoneInfo;->getPhoneAndroidSDK()J

    move-result-wide v0

    const-wide/16 v2, 0xe

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->IS_SDK_SUPPORT_WEBP:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mCurrentType:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mSmallSuffix:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mBigSuffix:Ljava/lang/String;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".short.w200"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, ".short.w300"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".short.w400"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".short.w500"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".short.w600"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->PIC_SUFFIX_ARRAY:[Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiBigSuffix:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiSmallSuffix:Ljava/lang/String;

    .line 48
    iput-boolean v3, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mIsNeedWifiOptimal:Z

    return-void
.end method

.method private dealWithBigPic(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "oriUrl"    # Ljava/lang/String;
    .param p2, "isGif"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getJpgOrWebpSuffix(Z)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "typeSuffix":Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiBigSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->isFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiBigSuffix:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiBigSuffix:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 91
    :goto_0
    return-object v2

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getBigSupportSuffix()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "bigSuffix":Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dealWithNonePic(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oriUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    .line 134
    return-object v0
.end method

.method private dealWithSmallPic(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "oriUrl"    # Ljava/lang/String;
    .param p2, "isGif"    # Z

    .prologue
    .line 97
    const/4 v3, 0x0

    .line 98
    .local v3, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 99
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getJpgOrWebpSuffix(Z)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "typeSuffix":Ljava/lang/String;
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiBigSuffix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->isFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiBigSuffix:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v2, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    .line 102
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiBigSuffix:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v2, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 115
    :goto_0
    return-object v4

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mBigSuffix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->isFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mBigSuffix:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v2, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mBigSuffix:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v2, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 114
    :goto_1
    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    move-object v4, v3

    .line 115
    goto :goto_0

    .line 106
    :cond_1
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiSmallSuffix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->isFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiSmallSuffix:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v2, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiSmallSuffix:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v2, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getSmallSupportSuffix()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "smallSuffix":Ljava/lang/String;
    iget-object v4, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v2, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getAppendStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "sizeSuffix"    # Ljava/lang/String;
    .param p3, "typeSuffix"    # Ljava/lang/String;
    .param p4, "isGif"    # Z

    .prologue
    .line 157
    move-object v0, p1

    .line 158
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 163
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getOrigTypeSuffix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getBigSupportSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/StatisticsHeader;->getInstance(Landroid/content/Context;)Lcom/oppo/tribune/StatisticsHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/StatisticsHeader;->getNetWork()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "curNetType":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mIsNeedWifiOptimal:Z

    if-eqz v1, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiBigSuffix:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mBigSuffix:Ljava/lang/String;

    goto :goto_0
.end method

.method private getJpgOrWebpSuffix(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isGif"    # Z

    .prologue
    .line 138
    const-string v0, ""

    .line 139
    .local v0, "suffix":Ljava/lang/String;
    sget-boolean v1, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->IS_SDK_SUPPORT_WEBP:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 140
    const-string v0, ".webp"

    .line 144
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const-string v0, ".jpg"

    goto :goto_0
.end method

.method private getOrigTypeSuffix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "sizeSuffix"    # Ljava/lang/String;
    .param p2, "isGif"    # Z

    .prologue
    .line 148
    const-string v0, ""

    .line 149
    .local v0, "suffix":Ljava/lang/String;
    sget-boolean v1, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->IS_SDK_SUPPORT_WEBP:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 150
    const-string v0, ".webp"

    .line 152
    :cond_0
    return-object v0
.end method

.method private getSmallSupportSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/tribune/StatisticsHeader;->getInstance(Landroid/content/Context;)Lcom/oppo/tribune/StatisticsHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/tribune/StatisticsHeader;->getNetWork()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "curNetType":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mIsNeedWifiOptimal:Z

    if-eqz v1, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiSmallSuffix:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mSmallSuffix:Ljava/lang/String;

    goto :goto_0
.end method

.method private getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "origUrl"    # Ljava/lang/String;

    .prologue
    .line 79
    move-object v0, p1

    .line 80
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method private getWifiSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->PIC_SUFFIX_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->PIC_SUFFIX_ARRAY:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 189
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->PIC_SUFFIX_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->PIC_SUFFIX_ARRAY:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object p1, v2, v3

    .line 195
    .end local v1    # "str":Ljava/lang/String;
    .end local p1    # "suffix":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 187
    .restart local v1    # "str":Ljava/lang/String;
    .restart local p1    # "suffix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFileExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 179
    :goto_0
    return v1

    .line 175
    :cond_0
    move-object v0, p1

    .line 176
    .local v0, "tmp":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_1
    invoke-direct {p0, v0}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImageSuffix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "small"    # Ljava/lang/String;
    .param p2, "big"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mSmallSuffix:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mBigSuffix:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mBigSuffix:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getWifiSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiBigSuffix:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mSmallSuffix:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getWifiSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mWifiSmallSuffix:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNeedWifiSupport(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mIsNeedWifiOptimal:Z

    .line 76
    return-void
.end method

.method public setUrlAndPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p2, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mPath:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mUrl:Ljava/lang/String;

    .line 53
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v0, "bbs2.wanyol.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bbs2.wanyol.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pai.nearme.com.cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "paifs.nearme.com.cn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://ddinterface2.oneplus.cn:8000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_3
    iput-object p1, p0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

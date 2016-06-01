.class public Lcom/oppo/tribune/util/Cookies;
.super Ljava/lang/Object;
.source "Cookies.java"


# instance fields
.field private mDomain:Ljava/lang/String;

.field private mExpires:Ljava/lang/String;

.field private mExpiry:Ljava/lang/String;

.field private mHttpOnly:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mPath:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mDomain:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mExpires:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mExpiry:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mVersion:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mHttpOnly:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mExpires:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mExpiry:Ljava/lang/String;

    return-object v0
.end method

.method public getHttponly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mHttpOnly:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/tribune/util/Cookies;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/oppo/tribune/util/Cookies;->mDomain:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 0
    .param p1, "expires"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/oppo/tribune/util/Cookies;->mExpires:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setExpiry(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiry"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/oppo/tribune/util/Cookies;->mExpiry:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setHttpOnly(Ljava/lang/String;)V
    .locals 0
    .param p1, "httponly"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oppo/tribune/util/Cookies;->mHttpOnly:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oppo/tribune/util/Cookies;->mName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/oppo/tribune/util/Cookies;->mPath:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oppo/tribune/util/Cookies;->mTag:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/oppo/tribune/util/Cookies;->mValue:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/oppo/tribune/util/Cookies;->mVersion:Ljava/lang/String;

    .line 81
    :cond_0
    return-void
.end method

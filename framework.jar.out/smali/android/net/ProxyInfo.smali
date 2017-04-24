.class public Landroid/net/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_EXCL_LIST:Ljava/lang/String; = ""

.field public static final LOCAL_HOST:Ljava/lang/String; = "localhost"

.field public static final LOCAL_PORT:I = -0x1


# instance fields
.field private mExclusionList:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPacFileUrl:Landroid/net/Uri;

.field private mParsedExclusionList:[Ljava/lang/String;

.field private mPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Landroid/net/ProxyInfo$1;

    invoke-direct {v0}, Landroid/net/ProxyInfo$1;-><init>()V

    sput-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/ProxyInfo;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 156
    iget-object v0, p1, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 157
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "pacFileUrl"    # Landroid/net/Uri;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 108
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "pacFileUrl"    # Landroid/net/Uri;
    .param p2, "localProxyPort"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 132
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 133
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 137
    :cond_0
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pacFileUrl"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 122
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 96
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 97
    invoke-direct {p0, p3}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    .line 98
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 99
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "parsedExclList"    # [Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 142
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 143
    iput-object p3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 145
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Landroid/net/ProxyInfo$1;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 65
    new-instance v0, Landroid/net/ProxyInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/ProxyInfo;"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "exclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 79
    .local v0, "array":[Ljava/lang/String;
    new-instance v1, Landroid/net/ProxyInfo;

    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;
    .locals 1
    .param p0, "pacUri"    # Landroid/net/Uri;

    .prologue
    .line 87
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, p0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method private setExclusionList(Ljava/lang/String;)V
    .locals 2
    .param p1, "exclusionList"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    instance-of v3, p1, Landroid/net/ProxyInfo;

    if-nez v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 274
    check-cast v0, Landroid/net/ProxyInfo;

    .line 277
    .local v0, "p":Landroid/net/ProxyInfo;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 278
    iget-object v3, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 280
    :cond_3
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, v0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    :cond_4
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    :cond_5
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 290
    :cond_6
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 291
    :cond_7
    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 292
    goto :goto_0
.end method

.method public getExclusionList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    return-object v0
.end method

.method public getExclusionListAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPacFileUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .local v1, "inetSocketAddress":Ljava/net/InetSocketAddress;
    move-object v0, v1

    .line 172
    .end local v1    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v0    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 229
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_2
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_4
    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public makeProxy()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 239
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 240
    .local v1, "proxy":Ljava/net/Proxy;
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 242
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iget v4, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 243
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "proxy":Ljava/net/Proxy;
    .local v2, "proxy":Ljava/net/Proxy;
    move-object v1, v2

    .line 247
    .end local v0    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "proxy":Ljava/net/Proxy;
    .restart local v1    # "proxy":Ljava/net/Proxy;
    :cond_0
    :goto_0
    return-object v1

    .line 244
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v2, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const-string v1, "PAC Script: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 258
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 263
    const-string v1, " xl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 266
    :cond_2
    const-string v1, "[ProxyProperties.mHost == null]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 320
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 321
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 326
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 328
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    :goto_1
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1
.end method

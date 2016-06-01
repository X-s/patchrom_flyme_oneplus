.class public Lcom/oppo/tribune/LoginUtils$AutoSignUser;
.super Ljava/lang/Object;
.source "LoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/LoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoSignUser"
.end annotation


# instance fields
.field private final mPassword:Ljava/lang/String;

.field private final mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/oppo/tribune/LoginUtils$AutoSignUser;->mUsername:Ljava/lang/String;

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 92
    invoke-static {p1, p2}, Lcom/oppo/tribune/util/MD5Sign;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/LoginUtils$AutoSignUser;->mPassword:Ljava/lang/String;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object p2, p0, Lcom/oppo/tribune/LoginUtils$AutoSignUser;->mPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/tribune/LoginUtils$AutoSignUser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/LoginUtils$AutoSignUser;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/tribune/LoginUtils$AutoSignUser;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/LoginUtils$AutoSignUser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/LoginUtils$AutoSignUser;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oppo/tribune/LoginUtils$AutoSignUser;->mPassword:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/tribune/LoginUtils$AutoSignUser;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oppo/tribune/LoginUtils$AutoSignUser;->mUsername:Ljava/lang/String;

    return-object v0
.end method

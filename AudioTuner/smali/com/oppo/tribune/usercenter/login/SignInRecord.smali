.class public Lcom/oppo/tribune/usercenter/login/SignInRecord;
.super Ljava/lang/Object;
.source "SignInRecord.java"


# instance fields
.field private password:Ljava/lang/String;

.field private rememberPassword:Z

.field private tokenSignIn:Z

.field private uid:J

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->uid:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isRememberPassword()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->rememberPassword:Z

    return v0
.end method

.method public isTokenLogin()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->tokenSignIn:Z

    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->password:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setRememberPassword(Z)V
    .locals 0
    .param p1, "rememberPassword"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->rememberPassword:Z

    .line 60
    return-void
.end method

.method public setTokenSignIn(Z)V
    .locals 0
    .param p1, "tokenSignIn"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->tokenSignIn:Z

    .line 76
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->uid:J

    .line 36
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/SignInRecord;->username:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/oppo/tribune/util/Utils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

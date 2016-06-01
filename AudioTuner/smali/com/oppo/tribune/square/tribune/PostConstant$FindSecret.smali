.class public Lcom/oppo/tribune/square/tribune/PostConstant$FindSecret;
.super Ljava/lang/Object;
.source "PostConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/tribune/PostConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindSecret"
.end annotation


# static fields
.field public static final FIND_SECRET_URL:Ljava/lang/String; = "http://testaccount.oppo.com/sysadmin/htm/?q=user/ajaxgetbackpass"

.field public static final FIND_SECRET_USER_EMAIL_PARAM:Ljava/lang/String; = "userEmail"

.field public static final FIND_SECRET_USER_NAME_PARAM:Ljava/lang/String; = "userName"

.field public static final FIND_SECRET_USER_TYPE_PARAM:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

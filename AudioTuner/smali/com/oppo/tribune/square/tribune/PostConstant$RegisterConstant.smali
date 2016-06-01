.class public Lcom/oppo/tribune/square/tribune/PostConstant$RegisterConstant;
.super Ljava/lang/Object;
.source "PostConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/tribune/PostConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterConstant"
.end annotation


# static fields
.field public static final REGISTER_BACK_PARAM:Ljava/lang/String; = "back"

.field public static final REGISTER_CHECK_ACCOUNT_PARAM:Ljava/lang/String; = "username"

.field public static final REGISTER_CHECK_ACCOUNT_URL:Ljava/lang/String; = "http://testaccount.oppo.com/sysadmin/htm/index.php?q=user/checkusername"

.field public static final REGISTER_CHECK_EMAIL_PARAM:Ljava/lang/String; = "email"

.field public static final REGISTER_CHECK_EMAIL_URL:Ljava/lang/String; = "http://testaccount.oppo.com/sysadmin/htm/index.php?q=user/checkemail"

.field public static final REGISTER_COOKIE_PARAM:Ljava/lang/String; = "Cookie"

.field public static final REGISTER_PROTOCOL_URL:Ljava/lang/String; = "http://testaccount.oppo.com/sysadmin/htm/index.php?q=user/regagreement"

.field public static final REGISTER_URL:Ljava/lang/String; = "http://testaccount.oppo.com/sysadmin/htm/index.php?q=user/ajaxregister"

.field public static final REGISTER_USER_EMAIL_PARAM:Ljava/lang/String; = "user_email"

.field public static final REGISTER_USER_NAME_PARAM:Ljava/lang/String; = "user_name"

.field public static final REGISTER_USER_PASS_CONFIRM_PARAM:Ljava/lang/String; = "user_pass_cfm"

.field public static final REGISTER_USER_PASS_PARAM:Ljava/lang/String; = "user_pass"

.field public static final REGISTER_VIFYCODE_PARAM:Ljava/lang/String; = "vifycode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

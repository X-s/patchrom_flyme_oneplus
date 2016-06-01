.class public Lcom/oppo/tribune/square/tribune/PostConstant$IdentifyConstant;
.super Ljava/lang/Object;
.source "PostConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/tribune/PostConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdentifyConstant"
.end annotation


# static fields
.field public static final ACTIVE_ACCOUNT_PARAM:Ljava/lang/String; = "code"

.field public static final ACTIVE_ACCOUNT_URL:Ljava/lang/String; = "http://testaccount.oppo.com/sysadmin/htm/index.php?q=user/ajaxActive"

.field public static final IDENTIFY_CODE_URL:Ljava/lang/String; = "http://testaccount.oppo.com/sysadmin/htm/index.php?q=index/verify&rd="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

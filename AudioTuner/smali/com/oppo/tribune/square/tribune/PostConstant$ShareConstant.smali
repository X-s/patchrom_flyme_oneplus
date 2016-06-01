.class public Lcom/oppo/tribune/square/tribune/PostConstant$ShareConstant;
.super Ljava/lang/Object;
.source "PostConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/tribune/PostConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareConstant"
.end annotation


# static fields
.field public static final EXTRA_SMS_BODY:Ljava/lang/String; = "sms_body"

.field public static final EXTRA_SUBJECT_VALUE:Ljava/lang/String; = "subject"

.field public static final TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final TYPE_MAIL:Ljava/lang/String; = "mail/*"

.field public static final URL_RENREN:Ljava/lang/String; = "http://www.connect.renren.com/share/sharer?url="

.field public static final URL_SINA_WEIBO:Ljava/lang/String; = "http://v.t.sina.com.cn/share/share.php?title="

.field public static final URL_SMS:Ljava/lang/String; = "smsto:"

.field public static final URL_TENCENT_WEIBO:Ljava/lang/String; = "http://v.t.qq.com/share/share.php?url="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

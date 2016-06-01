.class public Lcom/oppo/tribune/square/tribune/PostConstant$PostNewConstant;
.super Ljava/lang/Object;
.source "PostConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/tribune/PostConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostNewConstant"
.end annotation


# static fields
.field public static final POST_ALLOW_NOTICE_AUTHOR:Ljava/lang/String; = "allownoticeauthor"

.field public static final POST_CHECK_VERIFY:Ljava/lang/String; = "http://bbs2.wanyol.com/misc.php?mod=seccode&action=check&inajax=1&"

.field public static final POST_CHECK_VERIFY_IDHASH:Ljava/lang/String; = "&idhash="

.field public static final POST_CHECK_VERIFY_SECVERIFY:Ljava/lang/String; = "&secverify="

.field public static final POST_CHECK_VERIFY_SUCCEED:Ljava/lang/String; = "succeed"

.field public static final POST_EXTRA:Ljava/lang/String; = "extra"

.field public static final POST_FID:Ljava/lang/String; = "fid"

.field public static final POST_FORMHASH:Ljava/lang/String; = "formhash"

.field public static final POST_HANDLEKEY:Ljava/lang/String; = "handlekey"

.field public static final POST_HANDLEKEY_VALUE:Ljava/lang/String; = "newthread"

.field public static final POST_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final POST_LOCATION:Ljava/lang/String; = "location"

.field public static final POST_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final POST_MESSAGE:Ljava/lang/String; = "message"

.field public static final POST_POSTTIME:Ljava/lang/String; = "posttime"

.field public static final POST_PREPARE_URL:Ljava/lang/String; = "http://bbs2.wanyol.com/forum.php?mod=post&action=newthread"

.field public static final POST_SECCODE_VERIFY_IMAGE:Ljava/lang/String; = "seccodeverify"

.field public static final POST_SECHASH:Ljava/lang/String; = "sechash"

.field public static final POST_SECQAA_VERIFY_QUESTION:Ljava/lang/String; = "secanswer"

.field public static final POST_SUBJECT:Ljava/lang/String; = "subject"

.field public static final POST_TAIL:Ljava/lang/String; = "tail"

.field public static final POST_TOPICSUBMIT:Ljava/lang/String; = "topicsubmit"

.field public static final POST_TOPICSUBMIT_VALUE:Ljava/lang/String; = "\u53d1\u8868\u5e16\u5b50"

.field public static final POST_TYPEID:Ljava/lang/String; = "typeid"

.field public static final POST_URL:Ljava/lang/String; = "http://bbs2.wanyol.com/forum.php?mod=post&action=newthread&topicsubmit=yes"

.field public static final POST_USE_SIG:Ljava/lang/String; = "usesig"

.field public static final UPLOAD_FILEDATA:Ljava/lang/String; = "Filedata"

.field public static final UPLOAD_HASH:Ljava/lang/String; = "hash"

.field public static final UPLOAD_PREPARE_URL:Ljava/lang/String; = "http://bbs2.wanyol.com/misc.php?mod=swfupload&operation=config"

.field public static final UPLOAD_RESULT_URL:Ljava/lang/String; = "http://bbs2.wanyol.com/forum.php?mod=ajax&action=attachlist&fid=158&inajax=1&ajaxtarget=attachlist"

.field public static final UPLOAD_UID:Ljava/lang/String; = "uid"

.field public static final UPLOAD_URL:Ljava/lang/String; = "http://bbs2.wanyol.com/misc.php?mod=swfupload&operation=upload&simple=1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final UPLOAD_SET_FILEDATA(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File Name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

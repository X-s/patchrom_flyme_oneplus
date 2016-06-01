.class public Lcom/oppo/tribune/square/tribune/PostConstant$CommentPostConstant;
.super Ljava/lang/Object;
.source "PostConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/tribune/PostConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentPostConstant"
.end annotation


# static fields
.field public static final COMMENT_COMMENTSUBMIT_PARAM:Ljava/lang/String; = "commentsubmit"

.field public static final COMMENT_FORMHASH_PARAM:Ljava/lang/String; = "formhash"

.field public static final COMMENT_HANDLEKEY_PARAM:Ljava/lang/String; = "handlekey"

.field public static final COMMENT_MESSAGE_PARAM:Ljava/lang/String; = "message"

.field public static final COMMENT_PID_PARAM:Ljava/lang/String; = "pid"

.field public static final COMMENT_POST_PREPARE_URL:Ljava/lang/String; = "http://bbs2.wanyol.com/forum.php?mod=misc&action=comment"

.field public static final COMMENT_POST_URL:Ljava/lang/String; = "http://bbs2.wanyol.com/forum.php?mod=post&action=reply&comment=yes&commentsubmit=yes&infloat=yes"

.field public static final COMMENT_SECCODE_VERIFY_IMAGE:Ljava/lang/String; = "seccodeverify"

.field public static final COMMENT_SECCODE_VERIFY_QUESTION:Ljava/lang/String; = "secanswer"

.field public static final COMMENT_SECHASH_PARAM:Ljava/lang/String; = "sechash"

.field public static final COMMENT_TID_PARAM:Ljava/lang/String; = "tid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

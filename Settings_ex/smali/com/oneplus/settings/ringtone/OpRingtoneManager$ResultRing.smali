.class public Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;
.super Ljava/lang/Object;
.source "OpRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OpRingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultRing"
.end annotation


# instance fields
.field ringUri:Landroid/net/Uri;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 394
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OpRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    .line 395
    return-void
.end method

.class public Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;
.super Ljava/lang/Object;
.source "OpRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RingData"
.end annotation


# instance fields
.field mData:Ljava/lang/String;

.field mimetype:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "t1"    # Ljava/lang/String;
    .param p2, "t2"    # Ljava/lang/String;
    .param p3, "t3"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;->mData:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;->title:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;->mimetype:Ljava/lang/String;

    .line 54
    return-void
.end method

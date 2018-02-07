.class public Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;
.super Ljava/lang/Object;
.source "OPRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;->mData:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;->title:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;->mimetype:Ljava/lang/String;

    .line 55
    return-void
.end method

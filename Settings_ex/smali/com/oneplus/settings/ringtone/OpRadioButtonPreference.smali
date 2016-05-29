.class public Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OpRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;
    }
.end annotation


# instance fields
.field private mData:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->initViews()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->initViews()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->initViews()V

    .line 27
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f0400ab

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getData()Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->mData:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;

    return-object v0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public setData(Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;)V
    .locals 0
    .param p1, "data"    # Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->mData:Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;

    .line 40
    return-void
.end method

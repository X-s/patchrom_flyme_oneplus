.class public Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OPRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;
    }
.end annotation


# instance fields
.field private mData:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->initViews()V

    .line 28
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f04015a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->setCanRecycleLayout(Z)V

    .line 33
    return-void
.end method

.method private setCanRecycleLayout(Z)V
    .locals 5
    .param p1, "bCanRecycle"    # Z

    .prologue
    .line 65
    :try_start_0
    const-class v3, Landroid/preference/Preference;

    const-string/jumbo v4, "mCanRecycleLayout"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 66
    .local v0, "canRecycleLayoutField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "canRecycleLayoutField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getData()Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->mData:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;

    return-object v0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public setData(Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;)V
    .locals 0
    .param p1, "data"    # Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRadioButtonPreference;->mData:Lcom/oneplus/settings/ringtone/OPRadioButtonPreference$RingData;

    .line 43
    return-void
.end method

.class public Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "OPRadioButtonPreferenceV7.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->initViews()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->initViews()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->initViews()V

    .line 27
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0400f9

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setLayoutResource(I)V

    .line 34
    const v0, 0x7f040152

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setWidgetLayoutResource(I)V

    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setCanRecycleLayout(Z)V

    .line 32
    return-void
.end method

.method private setCanRecycleLayout(Z)V
    .locals 5
    .param p1, "bCanRecycle"    # Z

    .prologue
    .line 46
    :try_start_0
    const-class v3, Landroid/support/v7/preference/Preference;

    const-string/jumbo v4, "mCanRecycleLayout"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 47
    .local v0, "canRecycleLayoutField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "canRecycleLayoutField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.class public Lcom/oneplus/settings/defaultapp/view/DefaultMailPreference;
.super Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;
.source "DefaultMailPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getKeyTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

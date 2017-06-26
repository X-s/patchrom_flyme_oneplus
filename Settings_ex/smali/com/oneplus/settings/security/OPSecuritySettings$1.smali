.class Lcom/oneplus/settings/security/OPSecuritySettings$1;
.super Ljava/lang/Object;
.source "OPSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/security/OPSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/security/OPSecuritySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/security/OPSecuritySettings;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSecuritySettings$1;->this$0:Lcom/oneplus/settings/security/OPSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings$1;->this$0:Lcom/oneplus/settings/security/OPSecuritySettings;

    invoke-static {v0}, Lcom/android/settings_ex/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    .line 380
    const/4 v0, 0x1

    return v0
.end method

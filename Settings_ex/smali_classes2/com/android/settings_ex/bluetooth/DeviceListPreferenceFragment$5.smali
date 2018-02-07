.class Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->setDrawerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 496
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 491
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # F

    .prologue
    .line 486
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const/4 v3, 0x0

    .line 466
    if-nez p1, :cond_1

    .line 467
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v2, v3}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-set0(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;Z)Z

    .line 468
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-wrap0(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V

    .line 470
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-get2(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-get1(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v1

    .line 472
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-get2(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 478
    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-get0(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-set0(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;Z)Z

    .line 480
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$5;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-wrap1(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V

    goto :goto_0
.end method

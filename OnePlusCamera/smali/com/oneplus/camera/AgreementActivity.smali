.class public final Lcom/oneplus/camera/AgreementActivity;
.super Landroid/app/Activity;
.source "AgreementActivity.java"


# static fields
.field private static final AGREEMENT_URL_CHS:Ljava/lang/String; = "file:///android_asset/copyright_chs.htm"

.field private static final AGREEMENT_URL_CHT:Ljava/lang/String; = "file:///android_asset/copyright_cht.htm"

.field private static final AGREEMENT_URL_EN:Ljava/lang/String; = "file:///android_asset/copyright.htm"

.field public static final EXTRA_START_MODE:Ljava/lang/String; = "StartMode"

.field private static final TAG:Ljava/lang/String; = "AgreementActivity"


# instance fields
.field private m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private m_StartMode:Lcom/oneplus/camera/StartMode;

.field private m_WebView:Landroid/webkit/WebView;

.field private m_language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/AgreementActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/AgreementActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/camera/AgreementActivity;->isSecureMode()Z

    move-result v0

    return v0
.end method

.method private isSecureMode()Z
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/oneplus/camera/AgreementActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/camera/AgreementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "StartMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/StartMode;

    iput-object v1, p0, Lcom/oneplus/camera/AgreementActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    .line 45
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/AgreementActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v2, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v1, v2, :cond_1

    .line 46
    const/4 v1, 0x1

    .line 48
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/oneplus/camera/AgreementActivity;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 118
    const-string v2, "AgreementActivity"

    const-string v3, "registerReceivers() - Shutdown receiver"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v2, Lcom/oneplus/camera/AgreementActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AgreementActivity$1;-><init>(Lcom/oneplus/camera/AgreementActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "filterScreenOff":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/AgreementActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "filterUserUnlock":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/AgreementActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    .end local v0    # "filterScreenOff":Landroid/content/IntentFilter;
    .end local v1    # "filterUserUnlock":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/oneplus/camera/AgreementActivity;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/oneplus/camera/AgreementActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "AgreementActivity"

    const-string v1, "unregisterReceivers() - Shutdown receiver"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/oneplus/camera/AgreementActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AgreementActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/AgreementActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/camera/AgreementActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AgreementActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 66
    invoke-direct {p0}, Lcom/oneplus/camera/AgreementActivity;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/camera/AgreementActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/AgreementActivity;->registerReceivers()V

    .line 72
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AgreementActivity;->setContentView(I)V

    .line 74
    const v2, 0x7f0b0006

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_WebView:Landroid/webkit/WebView;

    .line 75
    iget-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_WebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/camera/AgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_language:Ljava/lang/String;

    .line 78
    const-string v1, "file:///android_asset/copyright.htm"

    .line 79
    .local v1, "cotyright":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_language:Ljava/lang/String;

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    const-string v1, "file:///android_asset/copyright_chs.htm"

    .line 84
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_WebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    return-void

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_language:Ljava/lang/String;

    const-string v3, "HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/camera/AgreementActivity;->m_language:Ljava/lang/String;

    const-string v3, "TW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    :cond_4
    const-string v1, "file:///android_asset/copyright_cht.htm"

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/oneplus/camera/AgreementActivity;->unregisterReceivers()V

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 101
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 102
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/camera/AgreementActivity;->finish()V

    .line 105
    const/4 v1, 0x1

    .line 107
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

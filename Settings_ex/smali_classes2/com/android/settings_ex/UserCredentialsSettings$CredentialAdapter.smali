.class Lcom/android/settings_ex/UserCredentialsSettings$CredentialAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CredentialAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/UserCredentialsSettings$Credential;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings_ex/UserCredentialsSettings$Credential;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "objects"    # [Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 234
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 240
    if-nez p2, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 242
    const v4, 0x7f0401f8

    .line 241
    invoke-virtual {v1, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    .line 245
    .local v0, "item":Lcom/android/settings_ex/UserCredentialsSettings$Credential;
    const v1, 0x7f110350

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/settings_ex/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const v1, 0x7f110351

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 247
    iget-object v1, v0, Lcom/android/settings_ex/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v5, Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;->USER_PRIVATE_KEY:Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 246
    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    const v1, 0x7f110352

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 249
    iget-object v1, v0, Lcom/android/settings_ex/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v5, Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 248
    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    const v1, 0x7f110353

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 251
    iget-object v4, v0, Lcom/android/settings_ex/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v5, Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 250
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    return-object p2

    :cond_1
    move v1, v3

    .line 247
    goto :goto_0

    :cond_2
    move v1, v3

    .line 249
    goto :goto_1

    :cond_3
    move v2, v3

    .line 251
    goto :goto_2
.end method

.class Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/SortedMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/settings_ex/UserCredentialsSettings$Credential;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/UserCredentialsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/UserCredentialsSettings;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/UserCredentialsSettings;Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/UserCredentialsSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings_ex/UserCredentialsSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 201
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/SortedMap;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 203
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 204
    .local v2, "credentials":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/android/settings_ex/UserCredentialsSettings$Credential;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .line 205
    .local v3, "keyStore":Landroid/security/KeyStore;
    invoke-static {}, Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;->values()[Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_4

    aget-object v4, v8, v7

    .line 206
    .local v4, "type":Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;
    iget-object v5, v4, Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v5, v6

    :goto_1
    if-ge v5, v11, :cond_3

    aget-object v0, v10, v5

    .line 208
    .local v0, "alias":Ljava/lang/String;
    const-string/jumbo v12, "profile_key_name_encrypt_"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 209
    const-string/jumbo v12, "profile_key_name_decrypt_"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 208
    if-eqz v12, :cond_1

    .line 206
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 212
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    .line 213
    .local v1, "c":Lcom/android/settings_ex/UserCredentialsSettings$Credential;
    if-nez v1, :cond_2

    .line 214
    new-instance v1, Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    .end local v1    # "c":Lcom/android/settings_ex/UserCredentialsSettings$Credential;
    invoke-direct {v1, v0}, Lcom/android/settings_ex/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;)V

    .restart local v1    # "c":Lcom/android/settings_ex/UserCredentialsSettings$Credential;
    invoke-interface {v2, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_2
    iget-object v12, v1, Lcom/android/settings_ex/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {v12, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 205
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "c":Lcom/android/settings_ex/UserCredentialsSettings$Credential;
    :cond_3
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 219
    .end local v4    # "type":Lcom/android/settings_ex/UserCredentialsSettings$Credential$Type;
    :cond_4
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p1, Ljava/util/SortedMap;

    .end local p1    # "credentials":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;->onPostExecute(Ljava/util/SortedMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/SortedMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/UserCredentialsSettings$Credential;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "credentials":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/android/settings_ex/UserCredentialsSettings$Credential;>;"
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings_ex/UserCredentialsSettings;->-get0(Lcom/android/settings_ex/UserCredentialsSettings;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/UserCredentialsSettings$CredentialAdapter;

    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings_ex/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/UserCredentialsSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 226
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    .line 225
    const v4, 0x7f0401f8

    invoke-direct {v2, v3, v4, v0}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialAdapter;-><init>(Landroid/content/Context;I[Lcom/android/settings_ex/UserCredentialsSettings$Credential;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    return-void
.end method

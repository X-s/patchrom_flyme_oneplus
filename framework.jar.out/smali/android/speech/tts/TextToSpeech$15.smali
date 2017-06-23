.class Landroid/speech/tts/TextToSpeech$15;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Landroid/speech/tts/Voice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    .prologue
    .line 1712
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$15;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .locals 13
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 1716
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, "defaultLanguage":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v10, v1

    if-nez v10, :cond_1

    .line 1719
    :cond_0
    const-string v10, "TextToSpeech"

    const-string/jumbo v11, "service.getClientDefaultLanguage() returned empty array"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 1749
    :goto_0
    return-object v6

    .line 1722
    :cond_1
    const/4 v10, 0x0

    aget-object v3, v1, v10

    .line 1723
    .local v3, "language":Ljava/lang/String;
    array-length v10, v1

    if-le v10, v11, :cond_2

    aget-object v0, v1, v11

    .line 1724
    .local v0, "country":Ljava/lang/String;
    :goto_1
    array-length v10, v1

    if-le v10, v12, :cond_3

    aget-object v5, v1, v12

    .line 1727
    .local v5, "variant":Ljava/lang/String;
    :goto_2
    invoke-interface {p1, v3, v0, v5}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1728
    .local v4, "result":I
    if-gez v4, :cond_4

    move-object v6, v9

    .line 1730
    goto :goto_0

    .line 1723
    .end local v0    # "country":Ljava/lang/String;
    .end local v4    # "result":I
    .end local v5    # "variant":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 1724
    .restart local v0    # "country":Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_2

    .line 1734
    .restart local v4    # "result":I
    .restart local v5    # "variant":Ljava/lang/String;
    :cond_4
    invoke-interface {p1, v3, v0, v5}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1735
    .local v7, "voiceName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v6, v9

    .line 1736
    goto :goto_0

    .line 1740
    :cond_5
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v8

    .line 1741
    .local v8, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v8, :cond_6

    move-object v6, v9

    .line 1742
    goto :goto_0

    .line 1744
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/speech/tts/Voice;

    .line 1745
    .local v6, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v6}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_0

    .end local v6    # "voice":Landroid/speech/tts/Voice;
    :cond_8
    move-object v6, v9

    .line 1749
    goto :goto_0
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1712
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$15;->run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;

    move-result-object v0

    return-object v0
.end method

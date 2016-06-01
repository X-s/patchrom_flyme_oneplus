.class public Lcom/oneplus/api/parsers/ConverterFactory;
.super Ljava/lang/Object;
.source "ConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/api/parsers/ConverterFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static final newConverter(Lcom/oneplus/api/constants/ResponseDataType;)Lcom/oneplus/api/parsers/Converter;
    .locals 3
    .param p0, "dataType"    # Lcom/oneplus/api/constants/ResponseDataType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/api/exception/ApiException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "converter":Lcom/oneplus/api/parsers/Converter;
    sget-object v1, Lcom/oneplus/api/parsers/ConverterFactory$1;->$SwitchMap$com$oneplus$api$constants$ResponseDataType:[I

    invoke-virtual {p0}, Lcom/oneplus/api/constants/ResponseDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 38
    new-instance v1, Lcom/oneplus/api/exception/ApiException;

    sget-object v2, Lcom/oneplus/api/constants/MessageCodes;->RESPONSE_FORMAT_NONSURPORT:Lcom/oneplus/api/constants/MessageCodes;

    invoke-direct {v1, v2}, Lcom/oneplus/api/exception/ApiException;-><init>(Lcom/oneplus/api/constants/MessageCodes;)V

    throw v1

    .line 32
    :pswitch_0
    new-instance v0, Lcom/oneplus/api/parsers/JsonConverter;

    .end local v0    # "converter":Lcom/oneplus/api/parsers/Converter;
    invoke-direct {v0}, Lcom/oneplus/api/parsers/JsonConverter;-><init>()V

    .line 40
    .restart local v0    # "converter":Lcom/oneplus/api/parsers/Converter;
    :goto_0
    return-object v0

    .line 35
    :pswitch_1
    new-instance v0, Lcom/oneplus/api/parsers/XMLConverter;

    .end local v0    # "converter":Lcom/oneplus/api/parsers/Converter;
    invoke-direct {v0}, Lcom/oneplus/api/parsers/XMLConverter;-><init>()V

    .line 36
    .restart local v0    # "converter":Lcom/oneplus/api/parsers/Converter;
    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

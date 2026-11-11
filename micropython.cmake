add_library(KNJGfx9341 INTERFACE)

# Pico 2 W (PICO_BOARD_VALUE=4) として認識させる
target_compile_definitions(KNJGfx9341 INTERFACE PICO_BOARD_VALUE=4)

set(SRC_FILES
    ${CMAKE_CURRENT_LIST_DIR}/misc/defines.cpp
    ${CMAKE_CURRENT_LIST_DIR}/Adafruit_GFX_Library/Adafruit_GFX.cpp
    ${CMAKE_CURRENT_LIST_DIR}/Adafruit_GFX_Library/Adafruit_SPITFT.cpp
    ${CMAKE_CURRENT_LIST_DIR}/Adafruit_ILI9341/Adafruit_ILI9341.cpp
    ${CMAKE_CURRENT_LIST_DIR}/spi/SPI.cpp    
    ${CMAKE_CURRENT_LIST_DIR}/Kanji/KanjiHelper.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/cyw43_wrappers.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/delay.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/_freertos.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/CoreMutex.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/Print.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/stdlib_noniso.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/WString.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/wiring_private.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/wiring_digital.cpp
    ${CMAKE_CURRENT_LIST_DIR}/core/wiring_analog.cpp
    ${CMAKE_CURRENT_LIST_DIR}/XPT2046_Touchscreen/XPT2046_Touchscreen.cpp
    ${CMAKE_CURRENT_LIST_DIR}/misc/pins.cpp
    ${CMAKE_CURRENT_LIST_DIR}/GFXModule.c
    ${CMAKE_CURRENT_LIST_DIR}/GFX.cpp
)

target_sources(KNJGfx9341 INTERFACE ${SRC_FILES})

target_include_directories(KNJGfx9341 INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}
    ${CMAKE_CURRENT_LIST_DIR}/misc
    ${CMAKE_CURRENT_LIST_DIR}/Adafruit_GFX_Library
    ${CMAKE_CURRENT_LIST_DIR}/Adafruit_GFX_Library/Fonts
    ${CMAKE_CURRENT_LIST_DIR}/Adafruit_BusIO
    ${CMAKE_CURRENT_LIST_DIR}/Adafruit_ILI9341
    ${CMAKE_CURRENT_LIST_DIR}/core
    ${CMAKE_CURRENT_LIST_DIR}/spi
    ${CMAKE_CURRENT_LIST_DIR}/variants
    ${CMAKE_CURRENT_LIST_DIR}/Kanji
    ${CMAKE_CURRENT_LIST_DIR}/XPT2046_Touchscreen    
    ${CMAKE_CURRENT_LIST_DIR}/../../../py    

    ${PICO_SDK_PATH}/src/rp2_common/hardware_exception/include
    ${PICO_SDK_PATH}/src/rp2_common/pico_lwip/include
    ${PICO_SDK_PATH}/src/rp2_common/pico_cyw43_driver/include
    ${PICO_SDK_PATH}/src/rp2_common/pico_cyw43_driver/include/pico
    ${PICO_SDK_PATH}/src/rp2_common/pico_cyw43_arch/include
    ${PICO_SDK_PATH}/src/rp2_common/pico_cyw43_arch/include/pico
    ${PICO_SDK_PATH}/src/rp2_common/pico_async_context/include
    ${PICO_SDK_PATH}/src/rp2_common/pico_async_context/include/pico
    ${PICO_SDK_PATH}/src/rp2_common/hardware_adc/include/ 
    ${PICO_SDK_PATH}/src/rp2_common/hardware_pwm/include/
    ${PICO_SDK_PATH}/src/rp2_common/pico_rand/include/
    ${PICO_SDK_PATH}/src/common/hardware_claim/include
    
    ${PICO_SDK_PATH}/lib/lwip/src/include
    ${PICO_SDK_PATH}/lib/lwip/src/include/iwip
    ${PICO_SDK_PATH}/lib/cyw43-driver/src/
    ${PICO_SDK_PATH}/../../lib/cyw43-driver/src/
    ${PICO_SDK_PATH}/../
    ${PICO_SDK_PATH}/../lib/cyw43-driver/src/
    ${PICO_SDK_PATH}/../../py
)

target_link_libraries(usermod INTERFACE KNJGfx9341)

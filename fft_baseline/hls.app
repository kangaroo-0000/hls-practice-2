<project xmlns="com.autoesl.autopilot.project" top="fft_streaming" name="fft_baseline">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../fft_top.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="fft_baseline/tw_r.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fft_baseline/tw_i.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fft_baseline/fft_top.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fft_baseline/fft.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fft_baseline/fft.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

